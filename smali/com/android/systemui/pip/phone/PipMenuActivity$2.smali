.class Lcom/android/systemui/pip/phone/PipMenuActivity$2;
.super Landroid/os/Handler;
.source "PipMenuActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/pip/phone/PipMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/os/Looper;)V
    .locals 0

    .line 145
    iput-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 148
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "stack_bounds"

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    .line 192
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$900(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    goto/16 :goto_1

    .line 187
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$800(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/animation/AnimatorSet;

    move-result-object p1

    const-wide/16 v0, 0x1e

    invoke-virtual {p1, v0, v1}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    .line 188
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$800(Lcom/android/systemui/pip/phone/PipMenuActivity;)Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_1

    .line 182
    :pswitch_2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/view/MotionEvent;

    .line 183
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$700(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/view/MotionEvent;)V

    goto/16 :goto_1

    .line 178
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$602(Lcom/android/systemui/pip/phone/PipMenuActivity;Z)Z

    goto :goto_1

    .line 173
    :pswitch_4
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 174
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string v0, "dismiss_fraction"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$500(Lcom/android/systemui/pip/phone/PipMenuActivity;F)V

    goto :goto_1

    .line 166
    :pswitch_5
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    const-string v0, "actions"

    .line 167
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ParceledListSlice;

    .line 168
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/graphics/Rect;

    if-eqz v0, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    .line 168
    :goto_0
    invoke-static {p0, p1, v0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$400(Lcom/android/systemui/pip/phone/PipMenuActivity;Landroid/graphics/Rect;Ljava/util/List;)V

    goto :goto_1

    .line 163
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Runnable;

    invoke-static {p0, p1}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$300(Lcom/android/systemui/pip/phone/PipMenuActivity;Ljava/lang/Runnable;)V

    goto :goto_1

    .line 160
    :pswitch_7
    iget-object p0, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    invoke-static {p0}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$200(Lcom/android/systemui/pip/phone/PipMenuActivity;)V

    goto :goto_1

    .line 150
    :pswitch_8
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 151
    iget-object v2, p0, Lcom/android/systemui/pip/phone/PipMenuActivity$2;->this$0:Lcom/android/systemui/pip/phone/PipMenuActivity;

    const-string p0, "menu_state"

    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 152
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p0

    move-object v4, p0

    check-cast v4, Landroid/graphics/Rect;

    const-string p0, "allow_timeout"

    .line 153
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string p0, "resize_menu_on_show"

    .line 154
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string p0, "show_menu_with_delay"

    .line 155
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    const-string p0, "show_resize_handle"

    .line 156
    invoke-virtual {p1, p0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v8

    .line 151
    invoke-static/range {v2 .. v8}, Lcom/android/systemui/pip/phone/PipMenuActivity;->access$100(Lcom/android/systemui/pip/phone/PipMenuActivity;ILandroid/graphics/Rect;ZZZZ)V

    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
