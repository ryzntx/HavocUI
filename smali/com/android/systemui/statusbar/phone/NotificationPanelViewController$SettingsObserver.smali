.class Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationPanelViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Landroid/os/Handler;)V
    .locals 0

    .line 2965
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    .line 2966
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 2970
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "qs_smart_pulldown"

    .line 2971
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v1, "status_bar_locked_on_secure_keyguard"

    .line 2974
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 2977
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 2987
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->update()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 2992
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->update()V

    return-void
.end method

.method unobserve()V
    .locals 1

    .line 2981
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2982
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public update()V
    .locals 5

    .line 2996
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$2100(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;)Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 2997
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v2, "qs_smart_pulldown"

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v0, v2, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4002(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;I)I

    .line 3000
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;

    const-string v1, "status_bar_locked_on_secure_keyguard"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    move v3, v2

    :cond_0
    invoke-static {p0, v3}, Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;->access$4102(Lcom/android/systemui/statusbar/phone/NotificationPanelViewController;Z)Z

    return-void
.end method
