.class final Ljonathanfinerty/once/Amount$1;
.super Ljava/lang/Object;
.source "Amount.java"

# interfaces
.implements Ljonathanfinerty/once/CountChecker;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljonathanfinerty/once/Amount;->exactly(I)Ljonathanfinerty/once/CountChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$numberOfTimes:I


# direct methods
.method constructor <init>(I)V
    .locals 0

    .prologue
    .line 7
    iput p1, p0, Ljonathanfinerty/once/Amount$1;->val$numberOfTimes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public check(I)Z
    .locals 1
    .param p1, "count"    # I

    .prologue
    .line 10
    iget v0, p0, Ljonathanfinerty/once/Amount$1;->val$numberOfTimes:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
