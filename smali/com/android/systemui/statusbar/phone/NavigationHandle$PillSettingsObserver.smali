.class Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;
.super Landroid/database/ContentObserver;
.source "NavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "PillSettingsObserver"
.end annotation


# instance fields
.field private final this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    .line 113
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 119
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {}, Lcom/znxt/systemui/ResourceUtils;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eq v3, v1, :cond_0

    :goto_0
    iput-boolean v0, v2, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mNavigationEnabled:Z

    .line 120
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mNavigationEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$4(Lcom/android/systemui/statusbar/phone/NavigationHandle;)I

    move-result v0

    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->apdetNavigationHandle(I)V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->access$2(Lcom/android/systemui/statusbar/phone/NavigationHandle;)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$PillSettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->updateGesture()V

    return-void

    :cond_0
    move v0, v1

    .line 119
    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
