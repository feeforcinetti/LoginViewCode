//
//  SceneDelegate.swift
//  LoginViewCode
//
//  Created by Felipe Forcinetti on 11/10/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    // AppDelegate: é responsavel pelo ciclo de vida e configuração do aplicativo.
    
    // SceneDelegate: é responsavel pelo o que é mostrado na tela e com ele nos podemos manipular e gerenciar a forma como o aplicativo é exibido.
    
    
    // Este metodo ira criar uma nova window e definir o controlador de vizualização raiz(root) e tornar a janela principal a ser exibida.
    
    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        
        let window = UIWindow(windowScene: windowScene)
        let vc: LoginViewController = LoginViewController()
        let navVC = UINavigationController(rootViewController: vc)
        window.rootViewController = navVC
       
        
        if #available(iOS 15, *){
            let aparence = UINavigationBarAppearance()
            aparence.configureWithOpaqueBackground()
            UINavigationBar.appearance().standardAppearance = aparence
            UINavigationBar.appearance().scrollEdgeAppearance = aparence
        }
            
        self.window = window
        window.makeKeyAndVisible()
        
       

    }

    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
    }


}

