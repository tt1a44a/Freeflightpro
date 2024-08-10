.class Lcom/parrot/freeflight/start/StartActivity$5;
.super Ljava/lang/Object;
.source "StartActivity.java"

# interfaces
.implements Lcom/parrot/freeflight/util/PermissionChecker$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/parrot/freeflight/start/StartActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/parrot/freeflight/start/StartActivity;


# direct methods
.method constructor <init>(Lcom/parrot/freeflight/start/StartActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/parrot/freeflight/start/StartActivity;

    .prologue
    .line 190
    iput-object p1, p0, Lcom/parrot/freeflight/start/StartActivity$5;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPermissionsChanged(ZLjava/util/Map;)V
    .locals 1
    .param p1, "allPermissionsGranted"    # Z
    .param p2    # Ljava/util/Map;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p2, "permissionsStatusDetails":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Boolean;>;"
    iget-object v0, p0, Lcom/parrot/freeflight/start/StartActivity$5;->this$0:Lcom/parrot/freeflight/start/StartActivity;

    invoke-static {v0}, Lcom/parrot/freeflight/start/StartActivity;->access$1200(Lcom/parrot/freeflight/start/StartActivity;)V

    .line 194
    return-void
.end method
