.class Lcom/android/systemui/statusbar/policy/TaskHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "TaskHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/TaskHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/TaskHelper;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$1;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/TaskHelper$1;->this$0:Lcom/android/systemui/statusbar/policy/TaskHelper;

    invoke-static {p0}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$100(Lcom/android/systemui/statusbar/policy/TaskHelper;)Landroid/content/ComponentName;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/TaskHelper;->access$002(Lcom/android/systemui/statusbar/policy/TaskHelper;Landroid/content/ComponentName;)Landroid/content/ComponentName;

    return-void
.end method
