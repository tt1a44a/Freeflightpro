.class Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController$2;
.super Ljava/lang/Object;
.source "SkyController2PCalibrationUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;

    .prologue
    .line 118
    iput-object p1, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController$2;->this$0:Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController$2;->this$0:Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;

    invoke-static {v0}, Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;->access$000(Lcom/parrot/freeflight/settings/SkyController2PCalibrationUiController;)V

    .line 122
    return-void
.end method
