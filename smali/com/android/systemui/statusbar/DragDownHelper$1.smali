.class Lcom/android/systemui/statusbar/DragDownHelper$1;
.super Ljava/lang/Object;
.source "DragDownHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/DragDownHelper;-><init>(Landroid/content/Context;Landroid/view/View;Lcom/android/systemui/ExpandHelper$Callback;Lcom/android/systemui/statusbar/DragDownHelper$DragDownCallback;Lcom/android/systemui/plugins/FalsingManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/DragDownHelper;Landroid/content/Context;)V
    .locals 0

    .line 86
    iput-object p2, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/systemui/statusbar/DragDownHelper$1;->val$context:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/internal/util/custom/Utils;->switchScreenOff(Landroid/content/Context;)V

    return-void
.end method
