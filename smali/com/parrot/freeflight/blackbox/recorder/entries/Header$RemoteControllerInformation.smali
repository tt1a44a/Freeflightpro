.class public Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;
.super Ljava/lang/Object;
.source "Header.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/recorder/entries/Header;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RemoteControllerInformation"
.end annotation


# instance fields
.field public final hardwareVersion:Ljava/lang/String;

.field public final serial:Ljava/lang/String;

.field public final softwareVersion:Ljava/lang/String;

.field public final type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0
    .param p1, "serial"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "softwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "hardwareVersion"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "type"    # I

    .prologue
    .line 163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 164
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->serial:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->softwareVersion:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->hardwareVersion:Ljava/lang/String;

    .line 167
    iput p4, p0, Lcom/parrot/freeflight/blackbox/recorder/entries/Header$RemoteControllerInformation;->type:I

    .line 168
    return-void
.end method
