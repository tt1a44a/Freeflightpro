.class Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$17;
.super Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$BooleanCommand;
.source "FixedWingOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->save()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Boolean;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;
    .param p2, "value"    # Ljava/lang/Boolean;

    .prologue
    .line 120
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$17;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    invoke-direct {p0, p1, p2}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$BooleanCommand;-><init>(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public execute()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$17;->this$0:Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;->access$000(Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine;)Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;

    move-result-object v1

    iget-object v0, p0, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingOfflineEngine$17;->mValue:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {v1, v0}, Lcom/parrot/freeflight/piloting/model/fixedwing/FixedWingModel;->setTimeLapse(Z)V

    .line 124
    return-void
.end method
