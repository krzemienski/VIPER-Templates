import Nimble
import Quick

@testable import ___PROJECTNAME___

 // swiftlint:disable:next type_body_length
class ___FILEBASENAMEASIDENTIFIER___PresenterSpec: QuickSpec {
        // swiftlint:disable:next function_body_length
        override func spec() {
                var presenter: ___FILEBASENAMEASIDENTIFIER___Presenter!

                var delegateMock: ___FILEBASENAMEASIDENTIFIER___DelegateMock!
                var interactorMock: ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterfaceMock!
                var viewMock: ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterfaceMock!
                var wireframeMock: ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock!

                describe("a ___FILEBASENAMEASIDENTIFIER___ presenter") {
                        beforeEach {
                                presenter = ___FILEBASENAMEASIDENTIFIER___Presenter()
                                delegateMock = ___FILEBASENAMEASIDENTIFIER___DelegateMock()
                                interactorMock = ___FILEBASENAMEASIDENTIFIER___PresenterToInteractorInterfaceMock()
                                viewMock = ___FILEBASENAMEASIDENTIFIER___PresenterToViewInterfaceMock()
                                wireframeMock = ___FILEBASENAMEASIDENTIFIER___WireframeInterfacesMock()

                                presenter.delegate = delegateMock
                                presenter.interactor = interactorMock
                                presenter.view = viewMock
                                presenter.wireframe = wireframeMock
                        }

                        // MARK: - Operational
                        describe("module wireframe computed variable") {
                                it("returns the wireframe as a ___FILEBASENAMEASIDENTIFIER___ object") {
                                        // Arrange

                                        // Act
                                        let moduleWireframe = presenter.moduleWireframe

                                        // Assert
                                        expect(moduleWireframe).to(beIdenticalTo(wireframeMock))
                                }
                        }

                        // MARK: - Interactor to Presenter Interface

                        // MARK: - View to Presenter Interface

                        // MARK: - Wireframe to Presenter Interface
                        describe("set delegate function") {
                                it("sets the input as the new delegate") {
                                        // Arrange
                                        presenter.delegate = nil
                                        let testDelegate = ___FILEBASENAMEASIDENTIFIER___DelegateMock()

                                        // Act
                                        presenter.set(delegate: testDelegate)

                                        // Assert
                                        expect(presenter.delegate).to(beIdenticalTo(testDelegate))
                                }
                        }
                }
        }
}
// swiftlint:disable:this file_length
