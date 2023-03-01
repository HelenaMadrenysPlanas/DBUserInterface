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
    /// Lógica de interacción para Manteniment.xaml
    /// </summary>
    public partial class Manteniment : Window
    {
        //Carreguem el dataSet
        DataSetDB ds = new DataSetDB();

        //Creem els TableAdapters que necessitem
        Order_DetailsTableAdapter taDetails = new Order_DetailsTableAdapter();

        //OrdreID obtinguta per l'usuari
        int IDOrdre;

        public Manteniment()
        {
            InitializeComponent();

            //Omplim el datagrid
            dgOrders.ItemsSource = ds.Order_Details;
        }

        private void btnCercar_Click(object sender, RoutedEventArgs e)
        {
            //Obtenim el número d'empleat a partir del texbox
            try
            {
                IDOrdre = int.Parse(txtOrderID.Text);

                //Aquest mètode requereix un DataSet i el número d'ordre
                taDetails.FillByOrderID(ds.Order_Details, IDOrdre);
            }
            catch (Exception)
            {
                MessageBox.Show("La Ordre entrada ha de ser un nombre");
            }
        }

        private void btnCommit_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Vols desar les dades?", "Desar?", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                try
                {
                    if (taDetails.Update(ds.Order_Details) == 0)
                    {
                        MessageBox.Show("No hi ha canvis.");
                    }
                    else
                    {
                        MessageBox.Show("Dades desades correctament.");
                    }
                }
                catch (Exception ex)
                {
                    MessageBox.Show(ex.Message, "Error al desar les dades.", MessageBoxButton.OK, MessageBoxImage.Error);
                }
            }
        }

        private void btnCancel_Click(object sender, RoutedEventArgs e)
        {
            if (MessageBox.Show("Vols cancelar les edicions?", "Cancelar?", MessageBoxButton.YesNo, MessageBoxImage.Question) == MessageBoxResult.Yes)
            {
                taDetails.FillByOrderID(ds.Order_Details, IDOrdre);
            }
        }
    }
}
