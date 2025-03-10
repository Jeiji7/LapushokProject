using LapushokProject.BD;
using LapushokProject.Frames;
using System;
using System.Collections.Generic;
using System.Diagnostics;
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
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace LapushokProject.Pages
{
    /// <summary>
    /// Логика взаимодействия для ProductPage.xaml
    /// </summary>
    public partial class ProductPage : Page
    {
        private bool isProgrammaticChange = false;
        public int indexpage = 1;
        public double countPage;
        public int result = 0;
        public ProductPage()
        {
            InitializeComponent();
            var typeProd = App.db.TypeProduct.ToList();
            typeProd.Insert(0,new TypeProduct() { ID =0, Name = "Все"});
            SearchTypeCB.ItemsSource = typeProd;
            SearchTypeCB.DisplayMemberPath = "Name";
            if (App.db.Product.Count() % 20 == 0)
            {
                countPage = App.db.Product.Count() / 20;
            }
            else
            {
                countPage = App.db.Product.Count() / 20 + 1;
            }
            ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material").OrderBy(x => x.ID).Skip(result).Take(20).ToList();
        }

        private void Hyperlink_Click_Next(object sender, RoutedEventArgs e)
        {
            isProgrammaticChange = true;
            result += 20;
            indexpage++;
            if (indexpage > countPage)
            {
                result -= 20;
                indexpage--;
                MessageBox.Show("Больше страниц нет");
                return;
            }
            ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material").OrderBy(x => x.ID).Skip(result).Take(20).ToList();
            IndexPageTB.Text = indexpage.ToString();
            isProgrammaticChange = false;
        }
        private void Hyperlink_Click_Back(object sender, RoutedEventArgs e)
        {
            isProgrammaticChange = true;
            if (indexpage == 1)
            {
                MessageBox.Show("Вы в самом начале!!!!");
                return;
            }
            result -= 20;
            indexpage--;
            ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material").OrderBy(x => x.ID).Skip(result).Take(20).ToList();
            IndexPageTB.Text = indexpage.ToString();
            isProgrammaticChange = false;
        }



        private void ProductListLW_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (isProgrammaticChange)
            {
                return;
            }
            var product = (Product)ProductListLW.SelectedItem;
            if (product != null)
            {
                ProductEditAndAddPage editAddPage = new ProductEditAndAddPage(product);
                editAddPage.listUpdate += ListUpdate;
                editAddPage.ShowDialog();
            }
        }

   

        private void Button_Click_Back(object sender, RoutedEventArgs e)
        {
            NavigationService.Navigate(new Pages.NavigationPage());
        }

        private void Button_Click_AddProduct(object sender, RoutedEventArgs e)
        {
            ProductEditAndAddPage editAddPage = new ProductEditAndAddPage();
            editAddPage.listUpdate += ListUpdate;
            editAddPage.ShowDialog();
        }

        private void ListUpdate()
        {
            ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material").OrderBy(x => x.ID).Skip(result).Take(20).ToList();
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material")
                .OrderBy(x => x.ID).Skip(result).Take(20).Where(x => x.Name.StartsWith(SearchTB.Text.Trim())).ToList();
            if (SearchTB.Text.Trim() == "")
            {
                ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material").OrderBy(x => x.ID).Skip(result).Take(20).ToList();
            }
        }
    }
}
