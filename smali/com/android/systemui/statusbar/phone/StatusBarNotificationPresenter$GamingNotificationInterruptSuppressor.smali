.class final Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;
.super Ljava/lang/Object;
.source "StatusBarNotificationPresenter.java"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/interruption/NotificationInterruptSuppressor;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GamingNotificationInterruptSuppressor"
.end annotation


# instance fields
.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mGamingModeNoAlert:Z

.field private mUriForDisableNotificationAlert:Landroid/net/Uri;

.field private mUriForGamingModeActive:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 564
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 556
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mGamingModeNoAlert:Z

    const-string v1, "gaming_mode_active"

    .line 558
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mUriForGamingModeActive:Landroid/net/Uri;

    const-string v1, "gaming_mode_disable_notification_alert"

    .line 559
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mUriForDisableNotificationAlert:Landroid/net/Uri;

    .line 565
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mContentResolver:Landroid/content/ContentResolver;

    .line 567
    new-instance v1, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;

    new-instance v2, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v2, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mContentObserver:Landroid/database/ContentObserver;

    .line 579
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mUriForGamingModeActive:Landroid/net/Uri;

    invoke-virtual {p1, v2, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 580
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mUriForDisableNotificationAlert:Landroid/net/Uri;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, v1, v0, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method static synthetic access$1002(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;Z)Z
    .locals 0

    .line 555
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mGamingModeNoAlert:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;)Landroid/content/ContentResolver;
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mContentResolver:Landroid/content/ContentResolver;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;)Landroid/net/Uri;
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mUriForGamingModeActive:Landroid/net/Uri;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;)Landroid/net/Uri;
    .locals 0

    .line 555
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mUriForDisableNotificationAlert:Landroid/net/Uri;

    return-object p0
.end method


# virtual methods
.method public suppressAwakeInterruptions(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 1

    .line 586
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getSbn()Landroid/service/notification/StatusBarNotification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    .line 587
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->mGamingModeNoAlert:Z

    if-eqz p0, :cond_0

    iget-object p0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v0, "call"

    .line 588
    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    iget-object p0, p1, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string p1, "alarm"

    .line 589
    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
