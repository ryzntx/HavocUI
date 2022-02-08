.class final Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider$loadVocab$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CustomBackGestureTfClassifierProvider.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider;->loadVocab(Landroid/content/res/AssetManager;)Ljava/util/Map;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lkotlin/collections/IndexedValue<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Integer;",
        ">;>;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider$loadVocab$1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider$loadVocab$1$1;

    invoke-direct {v0}, Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider$loadVocab$1$1;-><init>()V

    sput-object v0, Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider$loadVocab$1$1;->INSTANCE:Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider$loadVocab$1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 9
    check-cast p1, Lkotlin/collections/IndexedValue;

    invoke-virtual {p0, p1}, Lorg/protonaosp/systemui/CustomBackGestureTfClassifierProvider$loadVocab$1$1;->invoke(Lkotlin/collections/IndexedValue;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lkotlin/collections/IndexedValue;)Lkotlin/Pair;
    .locals 0
    .param p1    # Lkotlin/collections/IndexedValue;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/collections/IndexedValue<",
            "Ljava/lang/String;",
            ">;)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string p0, "it"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lkotlin/collections/IndexedValue;->getValue()Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1}, Lkotlin/collections/IndexedValue;->getIndex()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p0

    return-object p0
.end method
