.class Lcom/parrot/freeflight/settings/DroneCalibrationUiController$4;
.super Ljava/lang/Object;
.source "DroneCalibrationUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/DroneCalibrationUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    .prologue
    .line 201
    iput-object p1, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$4;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/parrot/freeflight/settings/DroneCalibrationUiController$4;->this$0:Lcom/parrot/freeflight/settings/DroneCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/DroneCalibrationUiController;->access$400(Lcom/parrot/freeflight/settings/DroneCalibrationUiController;)V

    .line 205
    return-void
.end method
