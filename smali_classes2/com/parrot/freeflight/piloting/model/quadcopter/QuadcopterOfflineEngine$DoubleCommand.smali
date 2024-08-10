.class abstract Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$DoubleCommand;
.super Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;
.source "QuadcopterOfflineEngine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "DoubleCommand"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand",
        "<",
        "Ljava/lang/Double;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;Ljava/lang/Double;)V
    .locals 0
    .param p1    # Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/Double;

    .prologue
    .line 181
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$DoubleCommand;->this$0:Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine;

    .line 182
    invoke-direct {p0, p2}, Lcom/parrot/freeflight/piloting/model/quadcopter/QuadcopterOfflineEngine$CachedCommand;-><init>(Ljava/lang/Object;)V

    .line 183
    return-void
.end method
