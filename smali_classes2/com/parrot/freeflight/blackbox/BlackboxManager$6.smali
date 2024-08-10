.class Lcom/parrot/freeflight/blackbox/BlackboxManager$6;
.super Ljava/lang/Object;
.source "BlackboxManager.java"

# interfaces
.implements Lcom/parrot/freeflight/network/InternetStatusManager$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/blackbox/BlackboxManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/blackbox/BlackboxManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$6;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInternetStatusChanged(Z)V
    .locals 1
    .param p1, "isInternetAvailable"    # Z

    .prologue
    .line 153
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$6;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$800(Lcom/parrot/freeflight/blackbox/BlackboxManager;)Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 154
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$6;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0, p1}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$802(Lcom/parrot/freeflight/blackbox/BlackboxManager;Z)Z

    .line 155
    iget-object v0, p0, Lcom/parrot/freeflight/blackbox/BlackboxManager$6;->this$0:Lcom/parrot/freeflight/blackbox/BlackboxManager;

    invoke-static {v0}, Lcom/parrot/freeflight/blackbox/BlackboxManager;->access$900(Lcom/parrot/freeflight/blackbox/BlackboxManager;)V

    .line 157
    :cond_0
    return-void
.end method
