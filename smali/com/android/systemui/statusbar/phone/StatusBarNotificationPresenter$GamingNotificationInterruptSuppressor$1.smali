.class Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;
.super Landroid/database/ContentObserver;
.source "StatusBarNotificationPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;Landroid/os/Handler;)V
    .locals 0

    .line 567
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 570
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 571
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->access$800(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->access$900(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 572
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;

    .line 573
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;)Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "gaming_mode_active"

    const/4 v1, 0x0

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;

    .line 574
    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->access$1100(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;)Landroid/content/ContentResolver;

    move-result-object p0

    const-string p2, "gaming_mode_disable_notification_alert"

    invoke-static {p0, p2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v0, :cond_1

    move v1, v0

    .line 572
    :cond_1
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;->access$1002(Lcom/android/systemui/statusbar/phone/StatusBarNotificationPresenter$GamingNotificationInterruptSuppressor;Z)Z

    :cond_2
    return-void
.end method
