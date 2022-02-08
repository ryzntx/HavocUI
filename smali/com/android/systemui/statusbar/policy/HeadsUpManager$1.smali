.class Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;
.super Landroid/database/ContentObserver;
.source "HeadsUpManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/HeadsUpManager;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$resources:Landroid/content/res/Resources;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/HeadsUpManager;Landroid/os/Handler;Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$resources:Landroid/content/res/Resources;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    .line 93
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    invoke-static {p1}, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->access$000(Lcom/android/systemui/statusbar/policy/HeadsUpManager;)Landroid/util/ArrayMap;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/ArrayMap;->clear()V

    const/4 p1, 0x0

    .line 96
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dont_touch_headsup"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 101
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    const/16 p1, 0x1450

    iput p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->this$0:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/HeadsUpManager$1;->val$resources:Landroid/content/res/Resources;

    sget v0, Lcom/android/systemui/R$integer;->touch_acceptance_delay:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p0

    iput p0, p1, Lcom/android/systemui/statusbar/policy/HeadsUpManager;->mTouchAcceptanceDelay:I

    :goto_0
    return-void
.end method
