.class public final synthetic Lcom/android/systemui/-$$Lambda$ScreenDecorations$K0yRHCDskIIuotLnlAE9tJOpocU;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/ScreenDecorations;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ScreenDecorations;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$K0yRHCDskIIuotLnlAE9tJOpocU;->f$0:Lcom/android/systemui/ScreenDecorations;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ScreenDecorations$K0yRHCDskIIuotLnlAE9tJOpocU;->f$0:Lcom/android/systemui/ScreenDecorations;

    invoke-virtual {p0}, Lcom/android/systemui/ScreenDecorations;->lambda$setTopCorners$4$ScreenDecorations()V

    return-void
.end method