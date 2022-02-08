.class Lcom/google/android/systemui/smartspace/SmartSpaceController$4;
.super Ljava/lang/Object;
.source "SmartSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController;->onNewCard(Lcom/google/android/systemui/smartspace/NewCardInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

.field final synthetic val$newCardInfo:Lcom/google/android/systemui/smartspace/NewCardInfo;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController;Lcom/google/android/systemui/smartspace/NewCardInfo;)V
    .locals 0

    .line 147
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->val$newCardInfo:Lcom/google/android/systemui/smartspace/NewCardInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 150
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->val$newCardInfo:Lcom/google/android/systemui/smartspace/NewCardInfo;

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$100(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->toWrapper(Landroid/content/Context;)Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$200(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$300(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 152
    :cond_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$400(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Lcom/google/android/systemui/smartspace/ProtoStore;

    move-result-object v1

    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "smartspace_"

    .line 154
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget v3, v3, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mCurrentUserId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "_"

    .line 156
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    iget-object v3, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->val$newCardInfo:Lcom/google/android/systemui/smartspace/NewCardInfo;

    invoke-virtual {v3}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/android/systemui/smartspace/ProtoStore;->store(Lcom/google/protobuf/nano/MessageNano;Ljava/lang/String;)V

    .line 160
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v1}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$500(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;

    invoke-direct {v2, p0, v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;-><init>(Lcom/google/android/systemui/smartspace/SmartSpaceController$4;Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
