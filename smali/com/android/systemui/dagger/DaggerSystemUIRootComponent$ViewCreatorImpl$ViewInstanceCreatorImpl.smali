.class final Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;
.super Ljava/lang/Object;
.source "DaggerSystemUIRootComponent.java"

# interfaces
.implements Lcom/android/systemui/util/InjectionInflationController$ViewInstanceCreator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ViewInstanceCreatorImpl"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

.field private viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;


# direct methods
.method private constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 5174
    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5175
    invoke-direct {p0, p2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$1;)V
    .locals 0

    .line 5169
    invoke-direct {p0, p1, p2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;-><init>(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V

    return-void
.end method

.method private getNotificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;
    .locals 9

    .line 5179
    new-instance v8, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5180
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5181
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5182
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5183
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5184
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/media/KeyguardMediaController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5185
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5186
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;-><init>(Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/notification/people/PeopleHubViewAdapter;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/statusbar/notification/NotificationSectionsFeatureManager;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsLogger;)V

    return-object v8
.end method

.method private getTileQueryHelper()Lcom/android/systemui/qs/customize/TileQueryHelper;
    .locals 3

    .line 5190
    new-instance v0, Lcom/android/systemui/qs/customize/TileQueryHelper;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5192
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v1

    .line 5191
    invoke-static {v1}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v2, v2, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5193
    invoke-static {v2}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljava/util/concurrent/Executor;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5194
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/concurrent/Executor;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/qs/customize/TileQueryHelper;-><init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V

    return-object v0
.end method

.method private initialize(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)V
    .locals 0

    .line 5200
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    iput-object p1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    return-void
.end method


# virtual methods
.method public creatNotificationShelf()Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 3

    .line 5263
    new-instance v0, Lcom/android/systemui/statusbar/NotificationShelf;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5265
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5267
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5268
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationShelf;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;)V

    return-object v0
.end method

.method public createKeyguardClockSwitch()Lcom/android/keyguard/KeyguardClockSwitch;
    .locals 7

    .line 5273
    new-instance v6, Lcom/android/keyguard/KeyguardClockSwitch;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5275
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5277
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5278
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5279
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$5600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/colorextraction/SysuiColorExtractor;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5280
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$10500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/keyguard/clock/ClockManager;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/KeyguardClockSwitch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/colorextraction/SysuiColorExtractor;Lcom/android/keyguard/clock/ClockManager;)V

    return-object v6
.end method

.method public createKeyguardMessageArea()Lcom/android/keyguard/KeyguardMessageArea;
    .locals 3

    .line 5298
    new-instance v0, Lcom/android/keyguard/KeyguardMessageArea;

    iget-object v1, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5300
    invoke-static {v1}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5302
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5303
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-direct {v0, v1, v2, p0}, Lcom/android/keyguard/KeyguardMessageArea;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/ConfigurationController;)V

    return-object v0
.end method

.method public createKeyguardSliceView()Lcom/android/keyguard/KeyguardSliceView;
    .locals 8

    .line 5285
    new-instance v7, Lcom/android/keyguard/KeyguardSliceView;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5287
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5289
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5290
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5291
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5292
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/tuner/TunerService;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5293
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Landroid/content/res/Resources;

    move-result-object v6

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/KeyguardSliceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/tuner/TunerService;Landroid/content/res/Resources;)V

    return-object v7
.end method

.method public createNotificationStackScrollLayout()Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;
    .locals 25

    move-object/from16 v0, p0

    .line 5234
    new-instance v23, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;

    move-object/from16 v1, v23

    iget-object v2, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5236
    invoke-static {v2}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5238
    invoke-static {v3}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v3

    iget-object v4, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v4, v4, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5239
    invoke-static {v4}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v4

    invoke-interface {v4}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iget-object v5, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v5, v5, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5240
    invoke-static {v5}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v5

    invoke-interface {v5}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;

    iget-object v6, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v6, v6, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5241
    invoke-static {v6}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v6

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;

    iget-object v7, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v7, v7, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5242
    invoke-static {v7}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v7

    invoke-interface {v7}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    iget-object v8, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v8, v8, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5243
    invoke-static {v8}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14900(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v8

    invoke-interface {v8}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;

    iget-object v9, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v9, v9, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5244
    invoke-static {v9}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v9

    invoke-interface {v9}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    iget-object v10, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v10, v10, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5245
    invoke-static {v10}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v10

    invoke-interface {v10}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/media/KeyguardMediaController;

    iget-object v11, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v11, v11, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5246
    invoke-static {v11}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v11

    invoke-interface {v11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/systemui/plugins/FalsingManager;

    iget-object v12, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v12, v12, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5247
    invoke-static {v12}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$7600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v12

    invoke-interface {v12}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iget-object v13, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v13, v13, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5248
    invoke-static {v13}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$8000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v13

    invoke-interface {v13}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;

    iget-object v14, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v14, v14, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5249
    invoke-static {v14}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v14

    invoke-interface {v14}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/systemui/statusbar/policy/ZenModeController;

    .line 5250
    invoke-direct/range {p0 .. p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->getNotificationSectionsManager()Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;

    move-result-object v15

    move-object/from16 v24, v1

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5251
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5252
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    .line 5253
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5254
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Lcom/android/systemui/statusbar/FeatureFlags;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5255
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v19, v1

    check-cast v19, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5256
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    check-cast v20, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    iget-object v1, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v1, v1, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5257
    invoke-static {v1}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v1

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v21, v1

    check-cast v21, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5258
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v22, v0

    check-cast v22, Lcom/android/internal/logging/UiEventLogger;

    move-object/from16 v1, v24

    invoke-direct/range {v1 .. v22}, Lcom/android/systemui/statusbar/notification/stack/NotificationStackScrollLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ZLcom/android/systemui/statusbar/notification/stack/NotificationRoundnessManager;Lcom/android/systemui/statusbar/notification/DynamicPrivacyController;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/phone/HeadsUpManagerPhone;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/KeyguardMediaController;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;Lcom/android/systemui/statusbar/notification/row/NotificationGutsManager;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/notification/stack/NotificationSectionsManager;Lcom/android/systemui/statusbar/notification/stack/ForegroundServiceSectionController;Lcom/android/systemui/statusbar/notification/ForegroundServiceDismissalFeatureController;Lcom/android/systemui/statusbar/FeatureFlags;Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Lcom/android/systemui/statusbar/notification/NotificationEntryManager;Lcom/android/systemui/statusbar/notification/collection/NotifCollection;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v23
.end method

.method public createQSCustomizer()Lcom/android/systemui/qs/customize/QSCustomizer;
    .locals 9

    .line 5336
    new-instance v8, Lcom/android/systemui/qs/customize/QSCustomizer;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5338
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/SystemUIFactory$ContextHolder;

    move-result-object v0

    .line 5337
    invoke-static {v0}, Lcom/android/systemui/SystemUIFactory_ContextHolder_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5340
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5341
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$6100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/phone/LightBarController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5342
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5343
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/keyguard/ScreenLifecycle;

    .line 5344
    invoke-direct {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->getTileQueryHelper()Lcom/android/systemui/qs/customize/TileQueryHelper;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5345
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/customize/QSCustomizer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/ScreenLifecycle;Lcom/android/systemui/qs/customize/TileQueryHelper;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v8
.end method

.method public createQSPanel()Lcom/android/systemui/qs/QSPanel;
    .locals 9

    .line 5308
    new-instance v8, Lcom/android/systemui/qs/QSPanel;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5310
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5312
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5313
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5314
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5315
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5316
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/media/MediaHost;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5317
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v8
.end method

.method public createQsFooter()Lcom/android/systemui/qs/QSFooterImpl;
    .locals 7

    .line 5222
    new-instance v6, Lcom/android/systemui/qs/QSFooterImpl;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5224
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5226
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5227
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5228
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/UserInfoController;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5229
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/QSFooterImpl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/statusbar/policy/UserInfoController;Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;)V

    return-object v6
.end method

.method public createQsHeader()Lcom/android/systemui/qs/QuickStatusBarHeader;
    .locals 12

    .line 5205
    new-instance v11, Lcom/android/systemui/qs/QuickStatusBarHeader;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5207
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5209
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5210
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$3100(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/statusbar/policy/NextAlarmController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5211
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$2000(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/statusbar/policy/ZenModeController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5212
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$4600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5213
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1300(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/systemui/plugins/ActivityStarter;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5214
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$9700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lcom/android/systemui/privacy/PrivacyItemController;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5215
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$11600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lcom/android/systemui/statusbar/CommandQueue;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5216
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$14500(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/systemui/util/RingerModeTracker;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5217
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v10, p0

    check-cast v10, Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v11

    invoke-direct/range {v0 .. v10}, Lcom/android/systemui/qs/QuickStatusBarHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/statusbar/policy/NextAlarmController;Lcom/android/systemui/statusbar/policy/ZenModeController;Lcom/android/systemui/statusbar/phone/StatusBarIconController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/util/RingerModeTracker;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v11
.end method

.method public createQuickQSPanel()Lcom/android/systemui/qs/QuickQSPanel;
    .locals 9

    .line 5322
    new-instance v8, Lcom/android/systemui/qs/QuickQSPanel;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5324
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideContextFactory;->proxyProvideContext(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->viewAttributeProvider:Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;

    .line 5326
    invoke-static {v0}, Lcom/android/systemui/util/InjectionInflationController_ViewAttributeProvider_ProvideAttributeSetFactory;->proxyProvideAttributeSet(Lcom/android/systemui/util/InjectionInflationController$ViewAttributeProvider;)Landroid/util/AttributeSet;

    move-result-object v2

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5327
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1200(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/android/systemui/dump/DumpManager;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5328
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$1400(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object v0

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/systemui/broadcast/BroadcastDispatcher;

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5329
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15700(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/qs/logging/QSLogger;

    move-result-object v5

    iget-object v0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object v0, v0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5330
    invoke-static {v0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$15800(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Lcom/android/systemui/media/MediaHost;

    move-result-object v6

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl$ViewInstanceCreatorImpl;->this$1:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;

    iget-object p0, p0, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent$ViewCreatorImpl;->this$0:Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;

    .line 5331
    invoke-static {p0}, Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;->access$13600(Lcom/android/systemui/dagger/DaggerSystemUIRootComponent;)Ljavax/inject/Provider;

    move-result-object p0

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v7, p0

    check-cast v7, Lcom/android/internal/logging/UiEventLogger;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/qs/QuickQSPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/media/MediaHost;Lcom/android/internal/logging/UiEventLogger;)V

    return-object v8
.end method
