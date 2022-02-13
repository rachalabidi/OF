package model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;

public class CUSERDAO { 	// ALL ABOUT THE TEACHER .... TAKE COFFEE MOREE COFFEEEEEEEEEE *_*
private Connection connection;

	
	// connection to database
	public CUSERDAO() {
		this.connection = null;
	}

	// connection to database
	public void connectDB() throws InstantiationException, IllegalAccessException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/mygpe", "root", "rashalabidicofy");
			System.out.println("Connection avec succes a la base de donnees !");
		} catch (ClassNotFoundException cnf) {
			System.out.print("Driver non chargé...");
		} catch (SQLException sqlex) {
			System.out.println("Incapable de connecter a la base de donnees...");
		}

	}


	// insert the object message in the database
	
		public void createAccount(createAccount ac)
				throws InstantiationException, IllegalAccessException {
			
			
			String requete;
			PreparedStatement stmt;
			
			connectDB();
			if(ac.getType().equals("prof")) {
			try {

				requete = "INSERT INTO prof(nom_prof,prenom_prof,email,tel,password,module) VALUES(?,?,?,?,?,?)";			
				stmt = connection.prepareStatement(requete);
				
			//	stmt.setInt(1,ac.getIdprof());
				stmt.setString(1, ac.getNom_prof());
				stmt.setString(2, ac.getPrenom_prof());
				stmt.setString(3, ac.getEmail());
				stmt.setString(4, ac.getTel());
		        stmt.setString(5, ac.getPassword());
		    	stmt.setString(6, ac.getModule());
				
			
				
				stmt.executeUpdate();
				stmt.close();

				System.out.println("yessssss ! new teacher is added");
			} catch (SQLException e) {
				System.out.println(e);
			}
			
			}
		}
		public void addUser(User c)
				throws InstantiationException, IllegalAccessException {
			
			
			String requete;
			PreparedStatement stmt;
			
			connectDB();
		try {

			requete = "INSERT INTO users(username,password,typeuser) VALUES(?,?,?)";			
			stmt = connection.prepareStatement(requete);
			
		
			stmt.setString(1, c.getUsename());
			stmt.setString(2, c.getPassword());
			stmt.setString(3, c.getType());
		
			
		
			
			stmt.executeUpdate();
			stmt.close();

			System.out.println("yessssss ! A NEW USER IS ADD ");
		} catch (SQLException e) {
			System.out.println(e);
		}
		
		}
		// NAM7iw prof hna 
		public void delPro(int id) throws InstantiationException, IllegalAccessException {
			String requete;
			PreparedStatement stmt;
			
			connectDB();

			try {

				requete = "DELETE FROM  prof WHERE (idprof =?)";			
				stmt = connection.prepareStatement(requete);
				
				stmt.setInt(1,id);
				
				
				stmt.executeUpdate();
				stmt.close();

				System.out.println(" u have just deleted a chikh  !");
			} catch (SQLException e) {
				System.out.println(e);
			}
		}
		// AFFICHAGE LISTE PROF .... RASHA GET MORE COFFEE LUTFEN 
		public ArrayList<createAccount> getEnseignant() throws InstantiationException, IllegalAccessException {
			
			String requete;
			PreparedStatement statement;
			
			createAccount enseignant = null;
			ArrayList<createAccount> ensList = new ArrayList<createAccount>();
			connectDB();
			try {
				
				
				
				requete = "SELECT * FROM prof";
				statement = connection.prepareStatement(requete);
				
				
				ResultSet result = statement.executeQuery();			
				
		        while (result.next()) {
		        	
		        	enseignant = new createAccount();
		        	enseignant.setIdprof(result.getInt("idprof"));
		            
		        	enseignant.setNom_prof(result.getString("nom_prof"));
		        	enseignant.setPrenom_prof(result.getString("prenom_prof"));
		        	enseignant.setEmail(result.getString("email"));
		        	enseignant.setPassword(result.getString("password"));
		        	enseignant.setModule(result.getString("module"));
		            
		            
		            ensList.add(enseignant);
		            
		        }
		        statement.close();

				System.out.println("bravooo u do it saha saha rasha  ---  !");
			} catch (SQLException e) {
				System.out.println(e);
			}
			
			return ensList ;
		}
		// UPDATE PROF FFFFFFFFF
		public void updateProf(createAccount enseignant )  throws InstantiationException, IllegalAccessException {

			String requete;
	        PreparedStatement stmt;
	        connectDB();
			
			
				try {
					
					
					
					requete = "UPDATE prof SET nom_prof=? , premon_prof=?,email=? ,password=?,module=?, tel=? WHERE idprof=?";
					stmt = connection.prepareStatement(requete);
					stmt = connection.prepareStatement(requete);
					
					stmt.setString(1,enseignant.getNom_prof());
					stmt.setString(2,enseignant.getPrenom_prof());
					stmt.setString(3,enseignant.getEmail());
					stmt.setString(4,enseignant.getPassword());
					stmt.setString(5,enseignant.getModule());
					stmt.setString(6,enseignant.getTel());
					stmt.setInt(7,enseignant.getIdprof());
					
					stmt.executeUpdate();
					stmt.close();

					
					 			
			
			      

					System.out.println("prof  updated sa7ity cofy !");
				} catch (SQLException e) {
					System.out.println(e);
				}
				
				
			}
		// SELECT PROF
		public createAccount selectProf(int id)  throws InstantiationException, IllegalAccessException {
			String requete;
	        PreparedStatement statement;
			
	        createAccount enseignant = null; 
			
			
				try {
					
					connectDB();
					
					requete = "SELECT * FROM prof WHERE idprof= ?";
					statement = connection.prepareStatement(requete);
					statement.setInt(1, id);
					ResultSet result = statement.executeQuery();			
					
			        while (result.next()) {
			        	
			        	enseignant = new createAccount();
			        	enseignant.setIdprof(result.getInt("id"));
			            
			        	enseignant.setNom_prof(result.getString("nom_prof"));
			        	enseignant.setPrenom_prof(result.getString("prenom_prof"));
			        	enseignant.setEmail(result.getString("email"));
			        	enseignant.setPassword(result.getString("password"));
			        	enseignant.setModule(result.getString("module"));
			            
			           
			        }
			        statement.close();

					System.out.println("selecteddd rasha keep u deservr cofy walah <3 !");
				} catch (SQLException e) {
					System.out.println(e);
				}
				
				return enseignant ;
			}
	 
}
		
