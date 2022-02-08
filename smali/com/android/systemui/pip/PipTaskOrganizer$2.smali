.class Lcom/android/systemui/pip/PipTaskOrganizer$2;
.super Landroid/window/WindowContainerTransactionCallback;
.source "PipTaskOrganizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/pip/PipTaskOrganizer;->exitPip(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

.field final synthetic val$animationDurationMs:I

.field final synthetic val$destinationBounds:Landroid/graphics/Rect;

.field final synthetic val$direction:I


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;II)V
    .locals 0

    .line 354
    iput-object p1, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    iput-object p2, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->val$destinationBounds:Landroid/graphics/Rect;

    iput p3, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->val$direction:I

    iput p4, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->val$animationDurationMs:I

    invoke-direct {p0}, Landroid/window/WindowContainerTransactionCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransactionReady(ILandroid/view/SurfaceControl$Transaction;)V
    .locals 7

    .line 357
    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 358
    iget-object v0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    invoke-static {v0}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$500(Lcom/android/systemui/pip/PipTaskOrganizer;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->val$destinationBounds:Landroid/graphics/Rect;

    iget v4, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->val$direction:I

    iget v5, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->val$animationDurationMs:I

    const/4 v3, 0x0

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$600(Lcom/android/systemui/pip/PipTaskOrganizer;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;IILjava/util/function/Consumer;)V

    .line 361
    iget-object p0, p0, Lcom/android/systemui/pip/PipTaskOrganizer$2;->this$0:Lcom/android/systemui/pip/PipTaskOrganizer;

    sget-object p1, Lcom/android/systemui/pip/PipTaskOrganizer$State;->EXITING_PIP:Lcom/android/systemui/pip/PipTaskOrganizer$State;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/PipTaskOrganizer;->access$702(Lcom/android/systemui/pip/PipTaskOrganizer;Lcom/android/systemui/pip/PipTaskOrganizer$State;)Lcom/android/systemui/pip/PipTaskOrganizer$State;

    return-void
.end method
