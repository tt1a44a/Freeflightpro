.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$13;
.super Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$DoubleCommand;
.source "QuadcopterOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$13;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$DoubleCommand;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 4

    .prologue
    .line 97
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$13;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->access$000(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;)Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$13;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setMaxPitchSpeed(D)V

    .line 98
    return-void
.end method
