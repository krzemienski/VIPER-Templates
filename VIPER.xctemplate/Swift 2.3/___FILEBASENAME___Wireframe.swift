import UIKit

class ___FILEBASENAMEASIDENTIFIER___Wireframe {
        // MARK: - VIPER Stack
        lazy var moduleInteractor = ___FILEBASENAMEASIDENTIFIER___Interactor()
        // Uncomment to use a navigationController from storyboard
        /*
        lazy var moduleNavigationController: UINavigationController = {
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let nc = (sb.instantiateViewControllerWithIdentifier(___FILEBASENAMEASIDENTIFIER___Constants.navigationControllerIdentifier) as? UINavigationController)!
                return nc
        }()
        */
        lazy var modulePresenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
        lazy var moduleView: ___FILEBASENAMEASIDENTIFIER___View = {
                // Uncomment the commented line below and delete the storyboard
                //      instantiation to use a navigationController from storyboard
                //let vc = self.moduleNavigationController.viewControllers[0] as! ___FILEBASENAMEASIDENTIFIER___View
                let sb = ___FILEBASENAMEASIDENTIFIER___Wireframe.storyboard()
                let vc = (sb.instantiateViewControllerWithIdentifier(___FILEBASENAMEASIDENTIFIER___Constants.viewIdentifier) as? ___FILEBASENAMEASIDENTIFIER___View)!
                let _ = vc.view
                return vc
        }()

        // MARK: - Computed VIPER Variables
        lazy var presenter: ___FILEBASENAMEASIDENTIFIER___WireframeToPresenterInterface = self.modulePresenter
        lazy var view: ___FILEBASENAMEASIDENTIFIER___NavigationInterface = self.moduleView

        // MARK: - Instance Variables

        // MARK: - Initialization
        init() {
                let i = moduleInteractor
                let p = modulePresenter
                let v = moduleView

                i.presenter = p

                p.interactor = i
                p.view = v
                p.wireframe = self

                v.presenter = p
        }

    	class func storyboard() -> UIStoryboard {
                return UIStoryboard(name: ___FILEBASENAMEASIDENTIFIER___Constants.storyboardIdentifier,
                                    bundle: NSBundle(forClass: ___FILEBASENAMEASIDENTIFIER___Wireframe.self))
    	}

        // MARK: - Operational

}

// MARK: - Module Interface
extension ___FILEBASENAMEASIDENTIFIER___Wireframe: ___FILEBASENAMEASIDENTIFIER___ {
        var delegate: ___FILEBASENAMEASIDENTIFIER___Delegate? {
                get {
                        return presenter.delegate
                }
                set {
                        presenter.set(delegate: newValue)
                }
        }
}

// MARK: - Presenter to Wireframe Interface
extension ___FILEBASENAMEASIDENTIFIER___Wireframe: ___FILEBASENAMEASIDENTIFIER___PresenterToWireframeInterface {

}
