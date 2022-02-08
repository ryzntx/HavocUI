.class Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;
.super Lcom/android/systemui/statusbar/phone/Ticker;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyTicker"
.end annotation


# instance fields
.field public mTickerView:Landroid/view/View;

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/content/Context;Landroid/view/View;)V
    .locals 2

    .line 3207
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    .line 3208
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4200(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v1

    invoke-direct {p0, p2, p3, v0, v1}, Lcom/android/systemui/statusbar/phone/Ticker;-><init>(Landroid/content/Context;Landroid/view/View;II)V

    .line 3209
    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 3210
    new-instance p0, Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Throwable;-><init>()V

    const-string p1, "StatusBar"

    const-string p2, "MyTicker instantiated with mTickerEnabled"

    invoke-static {p1, p2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    .line 3276
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/Ticker;->applyDarkIntensity(Landroid/graphics/Rect;Landroid/view/View;I)V

    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 0

    .line 3215
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    return-void
.end method

.method public tickerDone()V
    .locals 5

    .line 3243
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v2, :cond_0

    .line 3244
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v2, 0x10a007f

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3245
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v4, 0x10a007e

    invoke-static {v2, v4, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 3247
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v4, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mTickingDoneListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-static {v0, v2, v4}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3248
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v2, v3, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3250
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3251
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3252
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterArea:Landroid/view/View;

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 3253
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v2, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterArea:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3254
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    if-eqz v1, :cond_1

    const/16 v2, 0x8

    .line 3255
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3256
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    return-void
.end method

.method public tickerHalting()V
    .locals 4

    .line 3262
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    .line 3263
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3264
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3265
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterArea:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 3266
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterArea:Landroid/view/View;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3268
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    if-eqz p0, :cond_1

    const/16 v0, 0x8

    .line 3269
    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public tickerStarting()V
    .locals 5

    .line 3220
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/StatusBar;)Lcom/android/systemui/statusbar/phone/Ticker;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4300(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 3221
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4502(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 3223
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4100(Lcom/android/systemui/statusbar/phone/StatusBar;)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 3224
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v1, 0x10a007f

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3225
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    const v4, 0x10a007e

    invoke-static {v1, v4, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4600(Lcom/android/systemui/statusbar/phone/StatusBar;ILandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    goto :goto_0

    .line 3227
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 3228
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v1, v2, v3}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4700(Lcom/android/systemui/statusbar/phone/StatusBar;ZLandroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;

    move-result-object v1

    .line 3230
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3231
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mStatusBarContent:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3232
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterArea:Landroid/view/View;

    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 3233
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v3, v3, Lcom/android/systemui/statusbar/phone/StatusBar;->mCenterArea:Landroid/view/View;

    invoke-virtual {v3, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 3234
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3235
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 3236
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$MyTicker;->mTickerView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_2
    :goto_1
    return-void
.end method
