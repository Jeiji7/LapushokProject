using LapushokProject.BD;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace LapushokProject.Frames
{
    /// <summary>
    /// Логика взаимодействия для ProductEditAndAddPage.xaml
    /// </summary>
    public partial class ProductEditAndAddPage : Window
    {
        private Product prod = new Product();
        public int mode = 0;
        public event Action listUpdate;
        public ProductEditAndAddPage()
        {
            InitializeComponent();
            MainNameFrame.Text = "Добавление продукта";
            TypeProdCB.ItemsSource = App.db.TypeProduct.ToList();
            TypeProdCB.DisplayMemberPath = "Name";
            mode = 1;
        }
        public ProductEditAndAddPage(Product product)
        {
            InitializeComponent();
            prod = product;
            MainNameFrame.Text = "Редактирование продукта";
            TypeProdCB.ItemsSource = App.db.TypeProduct.ToList();
            TypeProdCB.DisplayMemberPath = "Name";
            mode = 2;
            NameProdTB.Text = prod.Name;
            ArticlTB.Text = prod.Article.ToString();
            MinCostTB.Text = prod.MinCost.ToString();
            CountPeopleTB.Text = prod.PeopleCount.ToString();
            ShopNumberTB.Text = prod.ShopNumber.ToString();
            TypeProdCB.SelectedIndex = (int)(prod.ID_type - 1);
            RefreshList();
        }
        private void RefreshList()
        {
            var list = App.db.ProductMaterial.Where(x => x.ID_prod == prod.ID).ToList();
            ItemsListMaterialLW.ItemsSource = list;
        }

        private void DeleteButton_Click(object sennder, RoutedEventArgs e)
        {
            if (ItemsListMaterialLW.SelectedItem is ProductMaterial selectedMaterial)
            {
                // Удаление из базы данных
                try
                {
                    App.db.ProductMaterial.Remove(selectedMaterial); // Удаляем элемент из таблицы
                    App.db.SaveChanges(); // Сохраняем изменения в базе данных
                    RefreshList();
                    MessageBox.Show("Материал усешно удалён!!");
                }
                catch (Exception ex)
                {
                    MessageBox.Show($"Ошибка при удалении из базы данных: {ex.Message}");
                    return;
                }
            }
        }
        private void Button_Click_Close(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Button_Click_SaveProduct(object sender, RoutedEventArgs e)
        {
            try
            {
                prod.Name = NameProdTB.Text;
                prod.Article = int.Parse(ArticlTB.Text);
                prod.MinCost = int.Parse(MinCostTB.Text);
                prod.Image = "/Images/picture.png";
                prod.PeopleCount = int.Parse(CountPeopleTB.Text);
                prod.ShopNumber = int.Parse(ShopNumberTB.Text);
                prod.ID_type = TypeProdCB.SelectedIndex + 1;
                if(mode == 1)
                {
                    App.db.Product.Add(prod);
                    MessageBox.Show("Данные успешно добавлены");
                }
                else
                {
                    MessageBox.Show("Данные успешно отредактированы");
                }
                App.db.SaveChanges();
                mode = 0;
                listUpdate?.Invoke();
                Close();
            }
            catch (Exception ex)
            {
                MessageBox.Show(ex.Message);
            }

        }
    }
}
