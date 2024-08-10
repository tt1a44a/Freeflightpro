.class Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;
.super Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;
.source "DeviceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/devicecontrollers/DeviceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReaderThread"
.end annotation


# instance fields
.field private final bufferId:I

.field private final dataRecv:Lcom/parrot/arsdk/arcommands/ARCommand;

.field final synthetic this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;


# direct methods
.method public constructor <init>(Lcom/parrot/controller/devicecontrollers/DeviceController;I)V
    .locals 2
    .param p2, "bufferId"    # I

    .prologue
    .line 1843
    iput-object p1, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-direct {p0, p1}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;-><init>(Lcom/parrot/controller/devicecontrollers/DeviceController;)V

    .line 1844
    iput p2, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->bufferId:I

    .line 1845
    new-instance v0, Lcom/parrot/arsdk/arcommands/ARCommand;

    const/high16 v1, 0x20000

    invoke-direct {v0, v1}, Lcom/parrot/arsdk/arcommands/ARCommand;-><init>(I)V

    iput-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->dataRecv:Lcom/parrot/arsdk/arcommands/ARCommand;

    .line 1846
    return-void
.end method


# virtual methods
.method public onStop()V
    .locals 1

    .prologue
    .line 1884
    iget-object v0, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->dataRecv:Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-virtual {v0}, Lcom/parrot/arsdk/arcommands/ARCommand;->dispose()V

    .line 1885
    invoke-super {p0}, Lcom/parrot/controller/devicecontrollers/DeviceController$LooperThread;->onStop()V

    .line 1886
    return-void
.end method

.method public onloop()V
    .locals 7

    .prologue
    .line 1851
    const/4 v2, 0x0

    .line 1852
    .local v2, "skip":Z
    sget-object v1, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    .line 1855
    .local v1, "netError":Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$1100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arnetwork/ARNetworkManager;

    move-result-object v3

    iget v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->bufferId:I

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->dataRecv:Lcom/parrot/arsdk/arcommands/ARCommand;

    const/16 v6, 0x3e8

    invoke-virtual {v3, v4, v5, v6}, Lcom/parrot/arsdk/arnetwork/ARNetworkManager;->readDataWithTimeout(ILcom/parrot/arsdk/arsal/ARNativeData;I)Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    move-result-object v1

    .line 1857
    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_OK:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-eq v1, v3, :cond_1

    .line 1859
    sget-object v3, Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;->ARNETWORK_ERROR_BUFFER_EMPTY:Lcom/parrot/arsdk/arnetwork/ARNETWORK_ERROR_ENUM;

    if-eq v1, v3, :cond_0

    .line 1864
    :cond_0
    const/4 v2, 0x1

    .line 1867
    :cond_1
    if-nez v2, :cond_2

    .line 1869
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$100(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;

    move-result-object v3

    iget-object v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->dataRecv:Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-virtual {v3, v4}, Lcom/parrot/arsdk/arcommands/ARCommandsDecoder;->decode(Lcom/parrot/arsdk/arcommands/ARCommand;)Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;

    move-result-object v0

    .line 1870
    .local v0, "decodeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;
    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;->ARCOMMANDS_DECODER_OK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;->ARCOMMANDS_DECODER_ERROR_NO_CALLBACK:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;

    if-eq v0, v3, :cond_3

    sget-object v3, Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;->ARCOMMANDS_DECODER_ERROR_UNKNOWN_COMMAND:Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;

    if-eq v0, v3, :cond_3

    .line 1872
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ARCommand.decode() failed. "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1879
    .end local v0    # "decodeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;
    :cond_2
    :goto_0
    return-void

    .line 1874
    .restart local v0    # "decodeStatus":Lcom/parrot/arsdk/arcommands/ARCOMMANDS_DECODER_ERROR_ENUM;
    :cond_3
    iget-object v3, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->this$0:Lcom/parrot/controller/devicecontrollers/DeviceController;

    invoke-static {v3}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$600(Lcom/parrot/controller/devicecontrollers/DeviceController;)Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/parrot/controller/devicecontrollers/ARNetworkConfig;->getD2cAckIdId()I

    move-result v3

    iget v4, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->bufferId:I

    if-ne v3, v4, :cond_2

    .line 1876
    invoke-static {}, Lcom/parrot/controller/devicecontrollers/DeviceController;->access$300()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did receive command : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/parrot/controller/devicecontrollers/DeviceController$ReaderThread;->dataRecv:Lcom/parrot/arsdk/arcommands/ARCommand;

    invoke-virtual {v5}, Lcom/parrot/arsdk/arcommands/ARCommand;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/parrot/arsdk/arsal/ARSALPrint;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
