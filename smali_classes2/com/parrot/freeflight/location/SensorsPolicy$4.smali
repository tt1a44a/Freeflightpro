.class Lcom/parrot/freeflight/location/SensorsPolicy$4;
.super Ljava/lang/Object;
.source "SensorsPolicy.java"

# interfaces
.implements Lcom/parrot/freeflight/core/model/Model$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/location/SensorsPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/location/SensorsPolicy;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/location/SensorsPolicy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/location/SensorsPolicy;

    .prologue
    .line 286
    iput-object p1, p0, Lcom/parrot/freeflight/location/SensorsPolicy$4;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/parrot/freeflight/location/SensorsPolicy$4;->this$0:Lcom/parrot/freeflight/location/SensorsPolicy;

    invoke-static {v0}, Lcom/parrot/freeflight/location/SensorsPolicy;->access$400(Lcom/parrot/freeflight/location/SensorsPolicy;)V

    .line 290
    return-void
.end method
