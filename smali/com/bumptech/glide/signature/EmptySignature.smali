.class public final Lcom/bumptech/glide/signature/EmptySignature;
.super Ljava/lang/Object;
.source "EmptySignature.java"

# interfaces
.implements Lcom/bumptech/glide/load/Key;


# static fields
.field private static final EMPTY_KEY:Lcom/bumptech/glide/signature/EmptySignature;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/bumptech/glide/signature/EmptySignature;

    invoke-direct {v0}, Lcom/bumptech/glide/signature/EmptySignature;-><init>()V

    sput-object v0, Lcom/bumptech/glide/signature/EmptySignature;->EMPTY_KEY:Lcom/bumptech/glide/signature/EmptySignature;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    return-void
.end method

.method public static obtain()Lcom/bumptech/glide/signature/EmptySignature;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 15
    sget-object v0, Lcom/bumptech/glide/signature/EmptySignature;->EMPTY_KEY:Lcom/bumptech/glide/signature/EmptySignature;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 24
    const-string v0, "EmptySignature"

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 0
    .param p1, "messageDigest"    # Ljava/security/MessageDigest;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 30
    return-void
.end method
