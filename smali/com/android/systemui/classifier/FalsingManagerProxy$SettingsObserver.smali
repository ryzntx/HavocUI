.class Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "FalsingManagerProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManagerProxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/os/Handler;)V
    .locals 2

    .line 122
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;->this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    .line 123
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 125
    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->access$200(Lcom/android/systemui/classifier/FalsingManagerProxy;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "keyguard_anti_falsing_enabled"

    invoke-static {p2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p1, p2, v0, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 0

    .line 132
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;->update()V

    return-void
.end method

.method public update()V
    .locals 1

    .line 136
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$SettingsObserver;->this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingManagerProxy;->access$200(Lcom/android/systemui/classifier/FalsingManagerProxy;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/systemui/classifier/FalsingManagerProxy;->access$300(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V

    return-void
.end method
