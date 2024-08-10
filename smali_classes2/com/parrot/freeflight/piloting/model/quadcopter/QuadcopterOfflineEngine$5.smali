.class Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$5;
.super Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$IntCommand;
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
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
    .param p2, "value"    # Ljava/lang/Integer;

    .prologue
    .line 46
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$5;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$IntCommand;-><init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 49
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$5;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;->access$000(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;)Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$5;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterModel;->setVideoResolutions(I)V

    .line 50
    return-void
.end method
