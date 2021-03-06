// Copyright © 2017 Jamit Labs GmbH. All rights reserved.

import Imperio
import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    // MARK: - Properties
    var window: UIWindow?
    private var initialFlowCtrl: InitialFlowController?

    // MARK: - Methods
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.makeKeyAndVisible()

        // setup global stuff
        Logger.shared.setup()
        Branding.shared.setup(window: window!)

        // start initial flow
        initialFlowCtrl = MainFlowController()
        initialFlowCtrl?.start(from: window!)

        return true
    }
}
