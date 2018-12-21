<?php

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // $this->call(UsersTableSeeder::class);

        DB::table('products')->insert([
        	'id'			=> 1,
            'name' 			=> 'Queso Tajado Finesse x 15 239 gr',
            'reference' 	=> 'QUE001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/finessetajadox15.jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 2,
            'name' 			=> 'Pettite Suisse Alpinito Surtido x 12 45 g',
            'reference' 	=> 'PET001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/alpinito-45g-x3.jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 3,
            'name' 			=> 'Crema de Leche Nestlac 223 gr 20 mas de Contenido 223 gr',
            'reference' 	=> 'CRE001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/crema-leche-nestle-223g-800x800.jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 4,
            'name' 			=> 'Crema Esparcible jet Frasco 350 gr',
            'reference' 	=> 'CRE002',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/crema-esparcible-jet-800x800.jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 5,
            'name' 			=> 'Arroz Blanco SuDespensa 500 GR.',
            'reference' 	=> 'ARR001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/arroz-su-despensa-500g-800x800.jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 6,
            'name' 			=> 'Frijol Bola Roja SuDespensa 500 Gr.',
            'reference' 	=> 'FRI001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/frijol-bola-roja-su-despensa-500g-800x800-(1).jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 7,
            'name' 			=> 'Lenteja SuDespensa 500 Gr.',
            'reference' 	=> 'LEN001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/lentejas-su-despensa-1kg-800x800.jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 8,
            'name' 			=> 'Aceite Vegetal Claro 3 Lt.',
            'reference' 	=> 'ACE001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/aceite-vegetal-claro-3L-800x800.jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 9,
            'name' 			=> 'Sal Mi Sal 500 Gr.',
            'reference' 	=> 'SAL001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/large/sal-mi-sal-130g-800x800-(1).jpg',
        ]);
        DB::table('products')->insert([
        	'id'			=> 10,
            'name' 			=> 'Combo SuDespensa',
            'reference' 	=> 'COM001',
            'price' 		=> 8390,
            'cost' 			=> 6390,
            'units' 		=> 0,
            'status_id' 	=> 1,
            'group' 		=> 0,
            'image'			=> 'https://d50xhnwqnrbqk.cloudfront.net/images/products/medium/combo-granos-aceite-800x800.jpg',
        ]);


        DB::table('status')->insert([
        	'id'			=> 1,
            'name' 			=> 'Inactive'
        ]);
        DB::table('status')->insert([
        	'id'			=> 2,
            'name' 			=> 'Active'
        ]);


        DB::table('groups')->insert([
        	'id'					=> 1,
        	'product_id'			=> 10,
            'relation_product_id' 	=> 5
        ]);
        DB::table('groups')->insert([
        	'id'					=> 2,
        	'product_id'			=> 10,
            'relation_product_id' 	=> 6
        ]);
        DB::table('groups')->insert([
        	'id'					=> 3,
        	'product_id'			=> 10,
            'relation_product_id' 	=> 7
        ]);
        DB::table('groups')->insert([
        	'id'					=> 4,
        	'product_id'			=> 10,
            'relation_product_id' 	=> 8
        ]);
        DB::table('groups')->insert([
        	'id'					=> 5,
        	'product_id'			=> 10,
            'relation_product_id' 	=> 9
        ]);

    }
}
