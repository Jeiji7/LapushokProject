﻿using LapushokProject.BD;
using LapushokProject.Frames;
using System.Linq;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Navigation;
using System.Data.Entity;
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
            typeProd.Insert(0, new TypeProduct() { ID = 0, Name = "Все" });
            SearchTypeCB.ItemsSource = typeProd;
            SearchTypeCB.DisplayMemberPath = "Name";
            SearchTypeCB.SelectedIndex = 0;
            if (App.db.Product.Count() % 20 == 0)
            {
                countPage = App.db.Product.Count() / 20;
            }
            else
            {
                countPage = App.db.Product.Count() / 20 + 1;
            }
            SumCost();
            //ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material").OrderBy(x => x.ID).Skip(result).Take(20).ToList();
        }
        private void SumCost()
        {
            var products = App.db.Product
            .Include("ProductMaterial.Material") // Загружаем связку продукт-материал
            .ToList();

            // Для каждого продукта считаем общую стоимость материалов
            foreach (var product in products)
            {
                if (product.ProductMaterial != null && product.ProductMaterial.Any())
                {
                    // Если материалы есть, считаем общую стоимость
                    product.MinCost = product.ProductMaterial.Sum(pm => pm.Material.Cost * pm.Count);
                }
            }
            ProductListLW.ItemsSource = products;
            ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material").OrderBy(x => x.ID).Skip(result).Take(20).ToList();
            // Сохраняем изменения в базе данных
            //App.db.SaveChanges();
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
            ProductListLW.SelectedItem = null;
        }

        private void SearchTB_TextChanged(object sender, TextChangedEventArgs e)
        {
            SearchNameProdAndType();
        }


        private void SearchTypeCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SearchNameProdAndType();
        }
        private void SearchNameProdAndType()
        {
            var list = App.db.Product.Include("ProductMaterial.Material")
                    .OrderBy(x => x.ID).Skip(result).Take(20).ToList();
            if (SearchTypeCB.SelectedIndex == 0 && SearchTB.Text.Trim() == "")
            {
                ProductListLW.ItemsSource = App.db.Product.Include("ProductMaterial.Material")
                    .OrderBy(x => x.ID).Skip(result).Take(20).ToList();
            }
            else if (SearchTB.Text.Trim() != "" && SearchTypeCB.SelectedIndex == 0)
            {
                 list = App.db.Product.Include("ProductMaterial.Material")
                    .OrderBy(x => x.ID).Skip(result).Take(20)
                    .Where(x => x.Name.StartsWith(SearchTB.Text.Trim())).ToList();
                ProductListLW.ItemsSource = list;
            }
            else if (SearchTB.Text.Trim() == "" && SearchTypeCB.SelectedIndex != 0)
            {
                 list = App.db.Product.Include("ProductMaterial.Material")
                    .OrderBy(x => x.ID).Skip(result).Take(20)
                    .Where(x => x.ID_type == SearchTypeCB.SelectedIndex).ToList();
                ProductListLW.ItemsSource = list;
            }
            else if(SearchTB.Text.Trim() != "" && SearchTypeCB.SelectedIndex != 0)
            {
                  list = App.db.Product.Include("ProductMaterial.Material")
                    .OrderBy(x => x.ID).Skip(result).Take(20)
                    .Where(x => x.ID_type == SearchTypeCB.SelectedIndex && x.Name.StartsWith(SearchTB.Text.Trim())).ToList();
                ProductListLW.ItemsSource = list;
            }
            if (SortNameCB.SelectedIndex == 0)
            {
                ProductListLW.ItemsSource = list.OrderBy(x => x.Name).ToList();
            }
            else if (SortNameCB.SelectedIndex == 1)
            {
                ProductListLW.ItemsSource = list.OrderByDescending(x => x.Name).ToList();
            }

        }

        private void SortNameCB_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            SearchNameProdAndType();
        }
    }
}
