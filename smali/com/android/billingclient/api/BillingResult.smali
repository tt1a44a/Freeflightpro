.class public final Lcom/android/billingclient/api/BillingResult;
.super Ljava/lang/Object;
.source "BillingResult.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/billingclient/api/BillingResult$Builder;
    }
.end annotation


# instance fields
.field private mDebugMessage:Ljava/lang/String;

.field private mResponseCode:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lcom/android/billingclient/api/BillingResult;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingResult;
    .param p1, "x1"    # I

    .prologue
    .line 12
    iput p1, p0, Lcom/android/billingclient/api/BillingResult;->mResponseCode:I

    return p1
.end method

.method static synthetic access$202(Lcom/android/billingclient/api/BillingResult;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "x0"    # Lcom/android/billingclient/api/BillingResult;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 12
    iput-object p1, p0, Lcom/android/billingclient/api/BillingResult;->mDebugMessage:Ljava/lang/String;

    return-object p1
.end method

.method public static newBuilder()Lcom/android/billingclient/api/BillingResult$Builder;
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lcom/android/billingclient/api/BillingResult$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/billingclient/api/BillingResult$Builder;-><init>(Lcom/android/billingclient/api/BillingResult$1;)V

    return-object v0
.end method


# virtual methods
.method public getDebugMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/android/billingclient/api/BillingResult;->mDebugMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getResponseCode()I
    .locals 1

    .prologue
    .line 18
    iget v0, p0, Lcom/android/billingclient/api/BillingResult;->mResponseCode:I

    return v0
.end method
