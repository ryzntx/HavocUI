.class public Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;
.super Ljava/lang/Object;
.source "SuperStatusBarViewFactory.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

.field private final mLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

.field private final mNotificationRowComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

.field private mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

.field private mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

.field private mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;)V
    .locals 0

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 58
    iput-object p2, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 59
    iput-object p3, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationRowComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    .line 60
    iput-object p4, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    return-void
.end method


# virtual methods
.method public getNotificationShadeWindowView()Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;
    .locals 3

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_0

    return-object v0

    .line 74
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 76
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 75
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->super_notification_shade:I

    const/4 v2, 0x0

    .line 76
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    if-eqz v0, :cond_2

    .line 82
    sget v1, Lcom/android/systemui/R$id;->lock_icon:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/LockIcon;

    if-eqz v0, :cond_1

    .line 84
    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mLockIconController:Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/LockscreenLockIconController;->attach(Lcom/android/systemui/statusbar/phone/LockIcon;)V

    .line 87
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShadeWindowView:Lcom/android/systemui/statusbar/phone/NotificationShadeWindowView;

    return-object p0

    .line 79
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.super_notification_shade could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getNotificationShelf(Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/NotificationShelf;
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz v0, :cond_0

    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 125
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->status_bar_notification_shelf:I

    const/4 v2, 0x0

    .line 125
    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationShelf;

    iput-object p1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    .line 128
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationRowComponentBuilder:Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    .line 129
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;->activatableNotificationView(Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationView;)Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;

    move-result-object p1

    .line 130
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent$Builder;->build()Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;

    move-result-object p1

    .line 131
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/row/dagger/NotificationRowComponent;->getActivatableNotificationViewController()Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ActivatableNotificationViewController;->init()V

    .line 133
    iget-object p0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mNotificationShelf:Lcom/android/systemui/statusbar/NotificationShelf;

    if-eqz p0, :cond_1

    return-object p0

    .line 134
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "R.layout.status_bar_notification_shelf could not be properly inflated"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public getStatusBarWindowView()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_0

    return-object v0

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mInjectionInflationController:Lcom/android/systemui/util/InjectionInflationController;

    iget-object v1, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mContext:Landroid/content/Context;

    .line 101
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/InjectionInflationController;->injectable(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->super_status_bar:I

    const/4 v2, 0x0

    .line 101
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/SuperStatusBarViewFactory;->mStatusBarWindowView:Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    if-eqz v0, :cond_1

    return-object v0

    .line 104
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "R.layout.super_status_bar could not be properly inflated"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
