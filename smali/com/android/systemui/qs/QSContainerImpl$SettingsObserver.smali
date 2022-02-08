.class Lcom/android/systemui/qs/QSContainerImpl$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "QSContainerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSContainerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/QSContainerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSContainerImpl;Landroid/os/Handler;)V
    .locals 0

    .line 128
    iput-object p1, p0, Lcom/android/systemui/qs/QSContainerImpl$SettingsObserver;->this$0:Lcom/android/systemui/qs/QSContainerImpl;

    .line 129
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .line 132
    iget-object v0, p0, Lcom/android/systemui/qs/QSContainerImpl$SettingsObserver;->this$0:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "display_cutout_mode"

    .line 133
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 132
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onChange(Z)V
    .locals 0

    .line 138
    iget-object p0, p0, Lcom/android/systemui/qs/QSContainerImpl$SettingsObserver;->this$0:Lcom/android/systemui/qs/QSContainerImpl;

    invoke-static {p0}, Lcom/android/systemui/qs/QSContainerImpl;->access$200(Lcom/android/systemui/qs/QSContainerImpl;)V

    return-void
.end method
