.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_jw9ixkkLLMPFpz5qlWQAWilFGk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/systemui/fragments/FragmentHostManager$FragmentListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_jw9ixkkLLMPFpz5qlWQAWilFGk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    return-void
.end method


# virtual methods
.method public final onFragmentViewCreated(Ljava/lang/String;Landroid/app/Fragment;)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$StatusBar$_jw9ixkkLLMPFpz5qlWQAWilFGk;->f$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->lambda$makeStatusBarView$7$StatusBar(Ljava/lang/String;Landroid/app/Fragment;)V

    return-void
.end method
