.class Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$2;
.super Ljava/lang/Object;
.source "SkyControllerCalibrationUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

    .prologue
    .line 127
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$2;->this$0:Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController$2;->this$0:Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;->access$000(Lcom/parrot/freeflight/settings/SkyControllerCalibrationUiController;)V

    .line 131
    return-void
.end method
