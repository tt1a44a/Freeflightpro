.class public Lcom/parrot/freeflight/usb/UsbDetectionActivity;
.super Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;
.source "UsbDetectionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/parrot/arsdk/ardiscovery/UsbAccessoryActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBaseActivity()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 11
    const-class v0, Lcom/parrot/freeflight/start/StartActivity;

    return-object v0
.end method
