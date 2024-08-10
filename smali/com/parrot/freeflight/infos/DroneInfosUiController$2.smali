.class Lcom/parrot/freeflight/infos/DroneInfosUiController$2;
.super Ljava/lang/Object;
.source "DroneInfosUiController.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


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
    .line 184
    iput-object p1, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$2;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 187
    iget-object v0, p0, Lcom/parrot/freeflight/infos/DroneInfosUiController$2;->this$0:Lcom/parrot/freeflight/infos/DroneInfosUiController;

    invoke-virtual {v0}, Lcom/parrot/freeflight/infos/DroneInfosUiController;->updateView()V

    .line 188
    return-void
.end method
