.class Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$CustomSettingsObserver;
.super Landroid/database/ContentObserver;
.source "KeyguardStatusBarView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomSettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;Landroid/os/Handler;)V
    .locals 0

    .line 591
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 592
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 3

    .line 596
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$500(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_cutout_mode"

    .line 597
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 610
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    const-string p1, "display_cutout_mode"

    .line 603
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 604
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView$CustomSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->access$600(Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;)V

    :cond_0
    return-void
.end method
