.class public Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel$CalibrationQuality;
.super Ljava/lang/Object;
.source "SkyControllerModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/skycontroller/SkyControllerModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CalibrationQuality"
.end annotation


# instance fields
.field public mQualityX:I

.field public mQualityY:I

.field public mQualityZ:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 327
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
