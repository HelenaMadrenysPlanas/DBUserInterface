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
using System.Windows.Navigation;
using System.Windows.Shapes;
using WpfAppA11.DAL;
using WpfAppA11.DAL.DataSetDBTableAdapters;

namespace WpfAppA11
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        private void itConsulta_Click(object sender, RoutedEventArgs e)
        {
            Consulta win = new Consulta();
            win.Show();
        }

        private void itManteniment_Click(object sender, RoutedEventArgs e)
        {
            Manteniment win = new Manteniment();
            win.Show();
        }

        private void itSortir_Click(object sender, RoutedEventArgs e)
        {
            Application.Current.Shutdown();
        }
    }
}
