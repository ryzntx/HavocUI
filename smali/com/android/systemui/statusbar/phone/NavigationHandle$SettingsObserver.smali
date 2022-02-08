.class Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NavigationHandle.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/NavigationHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x22
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ds:Lcom/android/systemui/statusbar/phone/NavigationHandle;

.field private final this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NavigationHandle;Lcom/android/systemui/statusbar/phone/NavigationHandle;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 400
    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    .line 401
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->ds:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    return-void
.end method

.method static access$0(Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;)Lcom/android/systemui/statusbar/phone/NavigationHandle;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    return-object v0
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 406
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->ds:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->ds:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v2, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, v3, Lcom/android/systemui/statusbar/phone/NavigationHandle;->ena:Z

    .line 409
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->ds:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->ds:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "DYNAMIC_NAVIGATION_BAR_STATE"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/NavigationHandle$SettingsObserver;->this$0:Lcom/android/systemui/statusbar/phone/NavigationHandle;

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NavigationHandle;->mOverrideIconColor:I

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/systemui/statusbar/phone/NavigationHandle;->apdet(I)V

    return-void

    :cond_0
    move v0, v2

    .line 406
    goto :goto_0

    .line 409
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method
