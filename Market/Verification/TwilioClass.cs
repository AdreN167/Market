using System;
using Twilio;
using Twilio.Rest.Api.V2010.Account;

namespace Market.Verification
{
    public class TwilioClass : IVerification
    {
        public string SendMessage(string phoneNumber)
        {
            string accountSid = "AC6c82d03b79d8909634380cb011b9c6cd";
            string authToken = "1ec2a0ad3245aa8a04d796d76b08d504";


            Random random = new Random();
            string code = random.Next(100000, 999999).ToString(); ;

            TwilioClient.Init(accountSid, authToken);

            var message = MessageResource.Create(
                body: $"Ваш код: {code}",
                from: new Twilio.Types.PhoneNumber("+13393646522"),
                to: new Twilio.Types.PhoneNumber(phoneNumber)
            );

            return code;
        }


        public static bool CheckCode(string firstCode, string secondCode)
        {
            if (firstCode == secondCode) return true;
            else return false;
        }

    }
}
