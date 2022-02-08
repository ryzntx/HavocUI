.class Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SwipeRunnable;
.super Ljava/lang/Object;
.source "EdgeBackGestureHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwipeRunnable"
.end annotation


# instance fields
.field private mIsVertical:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V
    .locals 0

    .line 804
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SwipeRunnable;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$1;)V
    .locals 0

    .line 804
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SwipeRunnable;-><init>(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 813
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SwipeRunnable;->this$0:Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SwipeRunnable;->mIsVertical:Z

    invoke-static {v0, p0}, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;->access$1700(Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler;Z)V

    return-void
.end method

.method public setIsVertical(Z)V
    .locals 0

    .line 808
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/EdgeBackGestureHandler$SwipeRunnable;->mIsVertical:Z

    return-void
.end method
