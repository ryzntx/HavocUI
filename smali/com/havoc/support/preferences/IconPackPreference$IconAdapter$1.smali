.class Lcom/havoc/support/preferences/IconPackPreference$IconAdapter$1;
.super Ljava/lang/Object;
.source "IconPackPreference.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;-><init>(Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/havoc/support/preferences/IconPackPreference$IconAdapter;)V
    .locals 0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;)I
    .locals 0

    .line 162
    iget-object p0, p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p2, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;->label:Ljava/lang/CharSequence;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 159
    check-cast p1, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;

    check-cast p2, Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;

    invoke-virtual {p0, p1, p2}, Lcom/havoc/support/preferences/IconPackPreference$IconAdapter$1;->compare(Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;Lcom/havoc/support/preferences/IconPackPreference$IconPackInfo;)I

    move-result p0

    return p0
.end method
