
namespace TIKSN.Pushalot.PowerShell
{
    [System.Management.Automation.Cmdlet("Send", "PushalotMessage")]
    public class SendPushalotMessageCommand : System.Management.Automation.Cmdlet
    {
        [System.Management.Automation.Parameter(Mandatory = true)]
        public string AuthorizationToken { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public string Title { get; set; }

        [System.Management.Automation.Parameter(Mandatory = true)]
        public string Message { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public string LinkTitle { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public string Link { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public System.Management.Automation.SwitchParameter IsImportant { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public System.Management.Automation.SwitchParameter IsSilent { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public string Image { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public string Source { get; set; }

        [System.Management.Automation.Parameter(Mandatory = false)]
        public int? TimeToLive { get; set; }

        protected override void BeginProcessing()
        {
            AuthorizationToken token = new AuthorizationToken(this.AuthorizationToken);

            MessageBuilder builder = new MessageBuilder();

            builder.MessageTitle = this.Title;
            builder.MessageBody = this.Message;
            builder.MessageLinkTitle = this.LinkTitle;
            builder.MessageLink = this.Link;
            builder.MessageIsImportant = this.IsImportant.IsPresent;
            builder.MessageIsSilent = this.IsSilent.IsPresent;
            builder.MessageImage = this.Image;
            builder.MessageSource = this.Source;
            builder.MessageTimeToLive = this.TimeToLive;

            PushalotClient client = new PushalotClient(token);

            client.SendMessageAsync(builder.Build());
        }
    }
}
