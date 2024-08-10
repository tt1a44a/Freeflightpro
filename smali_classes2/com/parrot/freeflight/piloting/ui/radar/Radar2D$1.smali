.class Lcom/parrot/freeflight/piloting/ui/radar/Radar2D$1;
.super Ljava/lang/Object;
.source "Radar2D.java"

# interfaces
.implements Lcom/parrot/freeflight/piloting/ui/radar/Radar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    .prologue
    .line 39
    iput-object p1, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldRefresh()V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D$1;->this$0:Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;

    invoke-static {v0}, Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;->access$000(Lcom/parrot/freeflight/piloting/ui/radar/Radar2D;)V

    .line 43
    return-void
.end method
