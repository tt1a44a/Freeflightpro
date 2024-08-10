.class public Ljonathanfinerty/once/Amount;
.super Ljava/lang/Object;
.source "Amount.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static exactly(I)Ljonathanfinerty/once/CountChecker;
    .locals 1
    .param p0, "numberOfTimes"    # I

    .prologue
    .line 7
    new-instance v0, Ljonathanfinerty/once/Amount$1;

    invoke-direct {v0, p0}, Ljonathanfinerty/once/Amount$1;-><init>(I)V

    return-object v0
.end method

.method public static lessThan(I)Ljonathanfinerty/once/CountChecker;
    .locals 1
    .param p0, "numberOfTimes"    # I

    .prologue
    .line 25
    new-instance v0, Ljonathanfinerty/once/Amount$3;

    invoke-direct {v0, p0}, Ljonathanfinerty/once/Amount$3;-><init>(I)V

    return-object v0
.end method

.method public static moreThan(I)Ljonathanfinerty/once/CountChecker;
    .locals 1
    .param p0, "numberOfTimes"    # I

    .prologue
    .line 16
    new-instance v0, Ljonathanfinerty/once/Amount$2;

    invoke-direct {v0, p0}, Ljonathanfinerty/once/Amount$2;-><init>(I)V

    return-object v0
.end method
