using System;
using System.Collections.Generic;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using WpfAppA11.DAL;
using WpfAppA11.DAL.DataSetDBTableAdapters;

namespace WpfAppA11
{
    /// <summary>
    /// Lógica de interacción para Consulta.xaml
    /// </summary>
    public partial class Consulta : Window
    {
        //Carreguem el dataSet
        DataSetDB ds = new DataSetDB();

        //Creem els TableAdapters que necessitem
        EmployeesTableAdapter taEmployees = new EmployeesTableAdapter();
        OrdersTableAdapter taOrders = new OrdersTableAdapter();

        public Consulta()
        {
            InitializeComponent();

            //Carreguem les dades dels empleats en un TableAdapter
            taEmployees.Fill(ds.Employees);

            //Omplim el Combobox
            cbEmpleats.ItemsSource = ds.Employees;

            //Omplim el datagrid
            dgOrders.ItemsSource = ds.Orders;
        }

        private void cbEmpleats_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            //Obtenim el número d'empleat a partir del combobox
            int IDempleat = (int)cbEmpleats.SelectedValue;

            //Aquest mètode requereix un DataSet i el número d'empleat
            taOrders.FillByEmployeeID(ds.Orders, IDempleat);
        }
    }
}
