.class Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;
.super Ljava/lang/Object;
.source "SmartSpaceController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

.field final synthetic val$wrapper:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;


# direct methods
.method constructor <init>(Lcom/google/android/systemui/smartspace/SmartSpaceController$4;Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iput-object p2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->val$wrapper:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 163
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->val$newCardInfo:Lcom/google/android/systemui/smartspace/NewCardInfo;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/NewCardInfo;->shouldDiscard()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 164
    :cond_0
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-static {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->access$100(Lcom/google/android/systemui/smartspace/SmartSpaceController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->val$wrapper:Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;

    iget-object v2, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object v2, v2, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->val$newCardInfo:Lcom/google/android/systemui/smartspace/NewCardInfo;

    invoke-virtual {v2}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/google/android/systemui/smartspace/SmartSpaceCard;->fromWrapper(Landroid/content/Context;Lcom/google/android/systemui/smartspace/nano/SmartspaceProto$CardWrapper;Z)Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    move-result-object v0

    .line 165
    :goto_0
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->val$newCardInfo:Lcom/google/android/systemui/smartspace/NewCardInfo;

    invoke-virtual {v1}, Lcom/google/android/systemui/smartspace/NewCardInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 166
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object v0, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mCurrentCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    goto :goto_1

    .line 168
    :cond_1
    iget-object v1, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object v1, v1, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    iput-object v0, v1, Lcom/google/android/systemui/smartspace/SmartSpaceData;->mWeatherCard:Lcom/google/android/systemui/smartspace/SmartSpaceCard;

    .line 170
    :goto_1
    iget-object v0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    iget-object v0, v0, Lcom/google/android/systemui/smartspace/SmartSpaceController;->mData:Lcom/google/android/systemui/smartspace/SmartSpaceData;

    invoke-virtual {v0}, Lcom/google/android/systemui/smartspace/SmartSpaceData;->handleExpire()Z

    .line 171
    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4$1;->this$1:Lcom/google/android/systemui/smartspace/SmartSpaceController$4;

    iget-object p0, p0, Lcom/google/android/systemui/smartspace/SmartSpaceController$4;->this$0:Lcom/google/android/systemui/smartspace/SmartSpaceController;

    invoke-virtual {p0}, Lcom/google/android/systemui/smartspace/SmartSpaceController;->update()V

    return-void
.end method
