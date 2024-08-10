.class Lcom/parrot/freeflight/infos/DroneInfosUiController$1;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/RelativePositionController$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/infos/DroneInfosUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/infos/DroneInfosUiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/infos/DroneInfosUiController;

    .prologue
    .line 170
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$1;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updatePosition(FFF)V
    .locals 0
    .param p1, "distanceToDrone"    # F
    .param p2, "distanceToHome"    # F
    .param p3, "bearing"    # F

    .prologue
    .line 175
    return-void
.end method

.method public updateRotation(F)V
    .locals 0
    .param p1, "rotation"    # F

    .prologue
    .line 180
    return-void
.end method
