.class public Lcom/parrot/freeflight/util/Version;
.super Ljava/lang/Object;
.source "Version.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/parrot/freeflight/util/Version;",
        ">;"
    }
.end annotation


# instance fields
.field private final mStringVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "version"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput-object p1, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    .line 22
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/parrot/freeflight/util/Version;)I
    .locals 2
    .param p1, "another"    # Lcom/parrot/freeflight/util/Version;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 34
    iget-object v0, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    iget-object v1, p1, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 12
    check-cast p1, Lcom/parrot/freeflight/util/Version;

    invoke-virtual {p0, p1}, Lcom/parrot/freeflight/util/Version;->compareTo(Lcom/parrot/freeflight/util/Version;)I

    move-result v0

    return v0
.end method

.method public compareTo(Ljava/lang/String;)I
    .locals 1
    .param p1, "stringVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 38
    iget-object v0, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/parrot/arsdk/arupdater/ARUpdaterManager;->comparePlfVersions(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getStringVersion()Ljava/lang/String;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Version :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/parrot/freeflight/util/Version;->mStringVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
