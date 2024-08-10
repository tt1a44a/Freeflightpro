.class Lcom/parrot/freeflight/core/model/DroneModel$2;
.super Ljava/lang/Object;
.source "DroneModel.java"

# interfaces
.implements Lcom/parrot/freeflight/location/Barometer$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/core/model/DroneModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/core/model/DroneModel;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/core/model/DroneModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/core/model/DroneModel;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/parrot/freeflight/core/model/DroneModel$2;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(FJ)V
    .locals 2
    .param p1, "pressure"    # F
    .param p2, "timestamp"    # J

    .prologue
    .line 174
    iget-object v0, p0, Lcom/parrot/freeflight/core/model/DroneModel$2;->this$0:Lcom/parrot/freeflight/core/model/DroneModel;

    invoke-virtual {v0, p1, p2, p3}, Lcom/parrot/freeflight/core/model/DroneModel;->userChangedUserBaroData(FJ)V

    .line 175
    return-void
.end method
