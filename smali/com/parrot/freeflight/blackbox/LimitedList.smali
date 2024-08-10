.class public Lcom/parrot/freeflight/blackbox/LimitedList;
.super Ljava/lang/Object;
.source "LimitedList.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# instance fields
.field private mIndex:I

.field private final mLimit:I

.field private final mObjectArray:[Ljava/lang/Object;

.field private mSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 3
    .param p1, "limit"    # I

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<TT;>;"
    const/4 v1, 0x0

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-gez p1, :cond_0

    .line 15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "limit < 0 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_0
    iput p1, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mLimit:I

    .line 19
    iget v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mLimit:I

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mObjectArray:[Ljava/lang/Object;

    .line 20
    iput v1, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mIndex:I

    .line 21
    iput v1, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    .line 22
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 25
    .local p0, "this":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mObjectArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mIndex:I

    aput-object p1, v0, v1

    .line 26
    iget v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mIndex:I

    add-int/lit8 v0, v0, 0x1

    iget v1, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mLimit:I

    rem-int/2addr v0, v1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mIndex:I

    .line 27
    iget v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    iget v1, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mLimit:I

    if-ge v0, v1, :cond_0

    .line 28
    iget v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    .line 30
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .local p0, "this":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<TT;>;"
    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mIndex:I

    .line 43
    iput v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    .line 44
    return-void
.end method

.method public clone()Lcom/parrot/freeflight/blackbox/LimitedList;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 54
    .local p0, "this":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<TT;>;"
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/parrot/freeflight/blackbox/LimitedList;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object v1

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    invoke-virtual {v0}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    .line 58
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 5
    .local p0, "this":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<TT;>;"
    invoke-virtual {p0}, Lcom/parrot/freeflight/blackbox/LimitedList;->clone()Lcom/parrot/freeflight/blackbox/LimitedList;

    move-result-object v0

    return-object v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<TT;>;"
    iget v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    if-le p1, v0, :cond_0

    .line 36
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mObjectArray:[Ljava/lang/Object;

    iget v1, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mIndex:I

    add-int/2addr v1, p1

    iget v2, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    rem-int/2addr v1, v2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 47
    .local p0, "this":Lcom/parrot/freeflight/blackbox/LimitedList;, "Lcom/parrot/freeflight/blackbox/LimitedList<TT;>;"
    iget v0, p0, Lcom/parrot/freeflight/blackbox/LimitedList;->mSize:I

    return v0
.end method
