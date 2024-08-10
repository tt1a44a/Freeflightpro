.class public Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker;
.super Ljava/lang/Object;
.source "Wpa2PasswordChecker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(C)Z
    .locals 1
    .param p0, "x0"    # C

    .prologue
    .line 7
    invoke-static {p0}, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker;->isCharAllowed(C)Z

    move-result v0

    return v0
.end method

.method public static getInputFilter()[Landroid/text/InputFilter;
    .locals 3
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 22
    new-instance v0, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker$1;

    invoke-direct {v0}, Lcom/parrot/freeflight/wifi/Wpa2PasswordChecker$1;-><init>()V

    .line 34
    .local v0, "filter":Landroid/text/InputFilter;
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    const/4 v2, 0x0

    aput-object v0, v1, v2

    return-object v1
.end method

.method private static isCharAllowed(C)Z
    .locals 1
    .param p0, "c"    # C

    .prologue
    .line 11
    const/16 v0, 0x20

    if-lt p0, v0, :cond_0

    const/16 v0, 0x7e

    if-gt p0, v0, :cond_0

    const/16 v0, 0x22

    if-eq p0, v0, :cond_0

    const/16 v0, 0x27

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSizeAllowed(I)Z
    .locals 1
    .param p0, "length"    # I

    .prologue
    .line 17
    const/16 v0, 0x8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
